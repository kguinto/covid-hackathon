
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
      'Community Options',
      '55-35 260th Street
Queens, NY 11362',
      'Little Neck',
      'NY',
      '',
      'Yes',
      '40.765369',
      '-73.722762'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options'
        AND o.latitude = '40.765369'
        AND o.longitude = '-73.722762'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options'
        AND o.latitude = '40.765369'
        AND o.longitude = '-73.722762'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options'
        AND o.latitude = '40.765369'
        AND o.longitude = '-73.722762'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options'
        AND o.latitude = '40.765369'
        AND o.longitude = '-73.722762'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options'
        AND o.latitude = '40.765369'
        AND o.longitude = '-73.722762'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options'
        AND o.latitude = '40.765369'
        AND o.longitude = '-73.722762'));

COMMIT;
