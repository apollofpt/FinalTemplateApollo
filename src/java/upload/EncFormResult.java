/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package upload;

import java.util.HashMap;
import java.util.List;

/**
 *
 * @author Minky
 */
    public class EncFormResult{
        private HashMap<String, List<String>> formFields;
        private List<String> filePaths;

        public HashMap<String, List<String>> getFormFields() {
            return formFields;
        }

        public List<String> getFilePaths() {
            return filePaths;
        }

        public EncFormResult() {
        }

        public EncFormResult(HashMap<String, List<String>> formFields, List<String> filePaths) {
            this.formFields = formFields;
            this.filePaths = filePaths;
        }
    }
