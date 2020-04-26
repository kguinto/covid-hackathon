
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
      'A Plus Home Care',
      '8903 W Adler St
Milwaukee, WI 53214',
      'MILWAUKEE',
      'WI',
      'Back door',
      'Yes',
      '43.0274042',
      '-88.023512'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Plus Home Care'
        AND o.latitude = '43.0274042'
        AND o.longitude = '-88.023512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Plus Home Care'
        AND o.latitude = '43.0274042'
        AND o.longitude = '-88.023512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Plus Home Care'
        AND o.latitude = '43.0274042'
        AND o.longitude = '-88.023512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Plus Home Care'
        AND o.latitude = '43.0274042'
        AND o.longitude = '-88.023512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Plus Home Care'
        AND o.latitude = '43.0274042'
        AND o.longitude = '-88.023512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Plus Home Care'
        AND o.latitude = '43.0274042'
        AND o.longitude = '-88.023512'));

COMMIT;
