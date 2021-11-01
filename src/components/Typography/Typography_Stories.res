open Storybook
open Render

storiesOf("Typography", Helpers.storybookModule)
  -> add("Basic usage", () => {
    <Typography>
      {`Text`->s}
    </Typography>
  })
  -> add("h1",()=>{
    <Typography variant=#h1>
      {`Title`->s}
    </Typography>
  })
  -> ignore