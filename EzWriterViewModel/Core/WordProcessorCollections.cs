namespace EzWriterViewModel.Core
{
    /// <summary>
    /// Defines collections used by the <see cref="WordProcessor"/> class.
    /// </summary>
    public class WordProcessorCollections
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="WordProcessorCollections"/> class.
        /// </summary>
        public WordProcessorCollections()
        {
            CharacterSpacings = new string[]
            {
                "Muy estrecho", "Estrecho", "Normal", "Separado", "Muy separado"
            };
            FontSizes = new float[]
            {
                8.0f, 9.0f, 10.0f, 11.0f, 12.0f, 14.0f, 16.0f, 18.0f, 20.0f, 24.0f,
                28.0f, 32.0f, 36.0f, 40.0f, 48.0f, 56.0f, 64.0f, 72.0f, 80.0f
            };
            LineSpacings = new string[]
            {
                "1pt", "1.5pt", "2pt", "2.5pt", "3pt"
            };
            ArrowSymbols = new string[]
            {
                "←", "↑", "→", "↓", "↔", "↕", "↖", "↗", "↘", "↙", "↚", "↛", "↜", "↝", "↞", "↟", "↠", "↡", "↢", "↣", "↤",
                "↥", "↦", "↧", "↨", "↩", "↪", "↫", "↬", "↭", "↮", "↯", "↰", "↱", "↲", "↳", "↴", "↵", "↶", "↷", "↸", "↹",
                "↺", "↻", "↼", "↽", "↾", "↿", "⇀", "⇁", "⇂", "⇃", "⇄", "⇅", "⇆", "⇇", "⇈", "⇉", "⇊", "⇋", "⇌", "⇍", "⇎",
                "⇏", "⇐", "⇑", "⇒", "⇓", "⇔", "⇕", "⇖", "⇗", "⇘", "⇙", "⇚", "⇛", "⇜", "⇝", "⇞", "⇟", "⇠", "⇡", "⇢", "⇣",
                "⇤", "⇥", "⇦", "⇧", "⇨", "⇩", "⇪",
            };
            GeometricSymbols = new string[]
            {
                "■", "□", "▢", "▣", "▤", "▥", "▦", "▧", "▨", "▩", "▪", "▫", "▬", "▭", "▮", "▯", "▰", "▱", "▲", "△", "▴",
                "▵", "▶", "▷", "▸", "▹", "►", "▻", "▼", "▽", "▾", "▿", "◀", "◁", "◂", "◃", "◄", "◅", "◆", "◇", "◈", "◉",
                "◊", "○", "◌", "◍", "◎", "●", "◐", "◑", "◒", "◓", "◔", "◕", "◖", "◗", "◘", "◙", "◚", "◛", "◜", "◝", "◞",
                "◟", "◠", "◡", "◢", "◣", "◤", "◥", "◦", "◧", "◨", "◩", "◪", "◫", "◬", "◭", "◮",
            };
            MiscellaneousSymbols = new string[]
            {
                "€", "£", "¥", "₪", "©", "®", "℗", "™", "℠", "§", "Ω", "℧", "µ", "℮", "℅", "℆", "‰", "‱", "℀", "℁", "℃",
                "℉", "⁂", "※", "※", "₠", "₡", "№", "☺", "☻", "☼", "♀", "♂", "♠", "♣", "♥", "♦", "♪", "♫", "♭", "♮", "♯",
            };
        }

        /// <summary>
        /// Gets the character spacings collection.
        /// </summary>
        public string[] CharacterSpacings { get; }

        /// <summary>
        /// Gets the font sizes collection.
        /// </summary>
        public float[] FontSizes { get; }

        /// <summary>
        /// Gets the line spacings collection.
        /// </summary>
        public string[] LineSpacings { get; }

        /// <summary>
        /// Gets the arrow symbols collection.
        /// </summary>
        public string[] ArrowSymbols { get; }

        /// <summary>
        /// Gets the geometric symbols collection.
        /// </summary>
        public string[] GeometricSymbols { get; }

        /// <summary>
        /// Gets the miscellaneous symbols collection.
        /// </summary>
        public string[] MiscellaneousSymbols { get; }
    }
}
