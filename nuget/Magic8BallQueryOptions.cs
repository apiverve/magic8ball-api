using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.Magic8Ball
{
    /// <summary>
    /// Query options for the Magic 8-Ball API
    /// </summary>
    public class Magic8BallQueryOptions
    {
        /// <summary>
        /// Your question for the Magic 8-Ball (optional)
        /// </summary>
        [JsonProperty("question")]
        public string Question { get; set; }
    }
}
