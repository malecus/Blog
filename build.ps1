param (
   [Parameter(Position = 0)]
   [ValidateSet( 'development', 'production' )]
   [string]
   $Environment = 'development'
)

$oldEnvironment = $env:JEKYLL_ENV

try {
   $env:JEKYLL_ENV = $Environment
   jekyll build
}
finally {
   $env:JEKYLL_ENV = $oldEnvironment
}
