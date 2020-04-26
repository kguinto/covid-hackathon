
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'John Shaw, MD',
      '1916 Patterson St #300
Nashville, TN 37203',
      'Nashville',
      'TN',
      'call office at 615-915-2206',
      'Yes',
      '36.1558065',
      '-86.8018296'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Shaw, MD'
        AND o.latitude = '36.1558065'
        AND o.longitude = '-86.8018296'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Shaw, MD'
        AND o.latitude = '36.1558065'
        AND o.longitude = '-86.8018296'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Shaw, MD'
        AND o.latitude = '36.1558065'
        AND o.longitude = '-86.8018296'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Shaw, MD'
        AND o.latitude = '36.1558065'
        AND o.longitude = '-86.8018296'));

COMMIT;
