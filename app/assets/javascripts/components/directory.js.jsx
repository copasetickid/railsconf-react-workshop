class Directory extends React.Component {
  constructor(props) {
    super();
    this.state = {
      selectedOption: 'Authors'
    };
    this.updateSelection = this.updateSelection.bind(this);
  }

  updateSelection(value) {
    this.setState(function() {
      return { selectedOption: value}
    });
  }

  render() {
    // XXX: Manipulation goes in the render(), before the return
    var items = ['All', 'Authors','Posts']

    return ( // Only return a single element - two divs would shit the bed.
      <div>
        <ul className="items">
          { items.map((opt) =>
            <li
              style={opt === this.state.selectedOption ? {color: '#d0021b'} : null }
              onClick={this.updateSelection.bind(null, opt)}
              key={opt}
            >
              {opt}
            </li>
          )}
        </ul>
      </div>
    );
  }
}
