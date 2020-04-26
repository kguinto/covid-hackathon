
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
      'Saint Luke''s Hospital of Kansas City',
      '4401 Wornall Road
Kansas City, MO 64111',
      'Kansas City',
      'MO',
      'Go through Emergency Dept (ask for security)',
      'Yes',
      '39.0474343',
      '-94.5907899'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Luke''s Hospital of Kansas City'
        AND o.latitude = '39.0474343'
        AND o.longitude = '-94.5907899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Luke''s Hospital of Kansas City'
        AND o.latitude = '39.0474343'
        AND o.longitude = '-94.5907899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Luke''s Hospital of Kansas City'
        AND o.latitude = '39.0474343'
        AND o.longitude = '-94.5907899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Luke''s Hospital of Kansas City'
        AND o.latitude = '39.0474343'
        AND o.longitude = '-94.5907899'));

COMMIT;
