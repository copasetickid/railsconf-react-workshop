function SelectedOption(props) {
  var items = ['All', 'Authors', 'Posts'];
  return (
    <ul className="items">
    { items.map((opt) =>
      <li style={opt === props.selectedOption
        ? { color: '#d0021b'} : null}
        onClick={props.onSelect.bind(null, opt)}
        key={opt}>
        {opt}
      </li>
      ) }
    </ul>
  )
}

class Directory extends React.Component {
  constructor(props) {
    super();
    this.state = {
      selectedOption: 'Authors'
    };
    this.updateSelection = this.updateSelection.bind(this);
  }

  updateSelection(value) {
    this.setState(function(){
      return { selectedOption: value }
    });
  }

  render() {
    /**/

    return (
      <div>
        <SelectedOption
          selectedOption={this.state.selectedOption}
          onSelect={this.updateSelection}
          />
      </div>
    )
  }
}
