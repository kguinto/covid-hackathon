
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
      'Lake Charles Memorial',
      '1701 Oak Park Blvd
Lake Charles, LA 70601',
      'Lake charles',
      'LA',
      'Drop off at Emergency Department ',
      'Yes',
      '30.2046906',
      '-93.1975818'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Charles Memorial'
        AND o.latitude = '30.2046906'
        AND o.longitude = '-93.1975818'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Charles Memorial'
        AND o.latitude = '30.2046906'
        AND o.longitude = '-93.1975818'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Charles Memorial'
        AND o.latitude = '30.2046906'
        AND o.longitude = '-93.1975818'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Charles Memorial'
        AND o.latitude = '30.2046906'
        AND o.longitude = '-93.1975818'));

COMMIT;
