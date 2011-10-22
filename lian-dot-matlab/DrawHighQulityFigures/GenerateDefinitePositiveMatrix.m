function aafPositiveDefiniteMatrix = GenerateDefinitePositiveMatrix( iNumberOfEigenvalues )


% -------------------------------------------------------------------------
% generate the unitary matrix
aafRandomMatrix							= randn(iNumberOfEigenvalues);
[aafUnitaryMatrix, aafUselessMatrix]	= qr( aafRandomMatrix ); %#ok<NASGU>


% -------------------------------------------------------------------------
% generate the eigenvalues
bAllTheEigenvaluesAreStrictlyPositive = false;
%
while( ~bAllTheEigenvaluesAreStrictlyPositive )
	%
	afEigenvalues = abs( randn( iNumberOfEigenvalues, 1 ) );
	%
	bAllTheEigenvaluesAreStrictlyPositive = all( afEigenvalues > 0 );
	%
end;% while


% -------------------------------------------------------------------------
% generate the positive definite matrix
aafPositiveDefiniteMatrix = aafUnitaryMatrix * diag(afEigenvalues) * aafUnitaryMatrix';


% -------------------------------------------------------------------------
% DEBUG
% eig( aafPositiveDefiniteMatrix )
% aafPositiveDefiniteMatrix


end % function
