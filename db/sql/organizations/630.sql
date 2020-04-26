
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
      'Jersey Coast Nephrology ',
      '1541 NJ-88 West, Suite A
Brick Township, NJ 08724',
      'Brick',
      'NJ',
      'Attn : Katy Samuel',
      'Yes',
      '40.0804642',
      '-74.1418421'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jersey Coast Nephrology '
        AND o.latitude = '40.0804642'
        AND o.longitude = '-74.1418421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jersey Coast Nephrology '
        AND o.latitude = '40.0804642'
        AND o.longitude = '-74.1418421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jersey Coast Nephrology '
        AND o.latitude = '40.0804642'
        AND o.longitude = '-74.1418421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jersey Coast Nephrology '
        AND o.latitude = '40.0804642'
        AND o.longitude = '-74.1418421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jersey Coast Nephrology '
        AND o.latitude = '40.0804642'
        AND o.longitude = '-74.1418421'));

COMMIT;
