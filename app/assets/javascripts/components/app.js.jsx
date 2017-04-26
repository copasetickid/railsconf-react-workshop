class App extends React.Component {
  render() {
    return (
      <div className="container">
        <h1 className="header center">
          Quick Reads for {this.props.name}
        </h1>
        <Directory />
      </div>
    )
  }
}

ReactDOM.render(
  <App name={"Chunky Bacon"}/>, document.getElementById('root')
)
