using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace LNPWI_DCS.Models
{
    public class Validator
    {
        // Validation Class

        public Boolean isValidString(string input)
        {
            if (!String.IsNullOrWhiteSpace(input))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public Boolean isNotEmpty(string input)
        {
            if (!String.IsNullOrWhiteSpace(input))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public Boolean isPhoneNumber(string input)
        {
            if (!String.IsNullOrWhiteSpace(input) && Regex.IsMatch(input, @"^\d{3}-\d{3}-\d{4}$"))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public Boolean isValidPositiveInt(int input) {
            try
            {
                int value = Convert.ToInt32(input);
                if (value > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                return false;
            }
        }

        public Boolean isValidDate(DateTime input)
        {
            return true;
        }
    }
}