
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
      'UPMC Western Maryland',
      '12500 Willowbrook Rd
Cumberland, MD 21502',
      'Cumberland ',
      'MD',
      'Mailing address',
      'No',
      '39.6481502',
      '-78.7325179'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Western Maryland'
        AND o.latitude = '39.6481502'
        AND o.longitude = '-78.7325179'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Western Maryland'
        AND o.latitude = '39.6481502'
        AND o.longitude = '-78.7325179'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Western Maryland'
        AND o.latitude = '39.6481502'
        AND o.longitude = '-78.7325179'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Western Maryland'
        AND o.latitude = '39.6481502'
        AND o.longitude = '-78.7325179'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Western Maryland'
        AND o.latitude = '39.6481502'
        AND o.longitude = '-78.7325179'));

COMMIT;
