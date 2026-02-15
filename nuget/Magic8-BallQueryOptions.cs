using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.Magic8-Ball
{
    /// <summary>
    /// Query options for the Magic 8-Ball API
    /// </summary>
    public class Magic8-BallQueryOptions
    {
        /// <summary>
        /// Your question for the Magic 8-Ball (optional)
        /// </summary>
        [JsonProperty("question")]
        public string Question { get; set; }
    }
}
