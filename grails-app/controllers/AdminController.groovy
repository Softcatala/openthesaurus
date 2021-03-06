/**
 * OpenThesaurus - web-based thesaurus management tool
 * Copyright (C) 2009 vionto GmbH, www.vionto.com
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */ 
import com.vionto.vithesaurus.*
import com.vionto.vithesaurus.tools.StringTools

class AdminController extends BaseController {
    
    def beforeInterceptor = [action: this.&adminAuth]
    
    def index = {
        final int resultLimit = 10
        def latestUsers = ThesaurusUser.withCriteria {
          order("creationDate", "desc")
          maxResults(resultLimit)
        }
        [latestUsers: latestUsers, resultLimit: resultLimit]
    }

    def checkNormalizedTermIntegrity = {
        List terms = Term.list()
        int count = 0
        for (term in terms) {
            if (!term.synset.isVisible) {
                continue
            }
            String normalizedWord = StringTools.normalize(term.word)
            if (normalizedWord != term.word && normalizedWord != term.normalizedWord) {
                render "Error1: <a href='../term/edit/${term.id}'>${term.word} | ${term.normalizedWord}</a><br />"
            }
            String normalizedWord2 = StringTools.normalize2(term.word)
            if (normalizedWord2 != term.word && normalizedWord2 != term.normalizedWord2 && normalizedWord2 != normalizedWord) {
                render "Error2: <a href='../term/edit/${term.id}'>${term.word} | ${term.normalizedWord2}</a><br />"
            }
            count++
        }
        render "<br>Checked ${count} terms."
        render "<form action='updateNormalizedTerms' method='post'>"
        render "  <input type='submit' value='Update Normalized Fields'/>"
        render "</form>"
    }

    def updateNormalizedTerms = {
        if (request.method != 'POST') {
            throw new Exception("Please call using method=POST")
        }
        List terms = Term.list()
        int count = 0
        for (term in terms) {
            if (!term.synset.isVisible) {
                continue
            }
            String normalizedWord = StringTools.normalize(term.word)
            if (normalizedWord != term.word && normalizedWord != term.normalizedWord) {
                term.normalizedWord = normalizedWord
                term.save(failOnError: true)
                render "Updated1: <a href='../synonyme/edit/${term.synset.id}'>${term.word} | ${term.normalizedWord}</a><br />"
            }
            String normalizedWord2 = StringTools.normalize2(term.word)
            if (normalizedWord2 != term.word && normalizedWord2 != term.normalizedWord2 && normalizedWord2 != normalizedWord) {
                term.normalizedWord2 = normalizedWord2
                term.save(failOnError: true)
                render "Updated2: <a href='../synonyme/edit/${term.synset.id}'>${term.word} | ${term.normalizedWord2}</a><br />"
            }
            count++
        }
        render "<br>Ran over ${count} terms."
    }

}
