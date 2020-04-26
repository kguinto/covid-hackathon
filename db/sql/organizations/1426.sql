
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
      'Hawkeye Care Center',
      '5575 Pennsylvania Ave
Asbury, IA 52002',
      'Asbury',
      'IA',
      '',
      'Yes',
      '42.5004542',
      '-90.7568747'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hawkeye Care Center'
        AND o.latitude = '42.5004542'
        AND o.longitude = '-90.7568747'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hawkeye Care Center'
        AND o.latitude = '42.5004542'
        AND o.longitude = '-90.7568747'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hawkeye Care Center'
        AND o.latitude = '42.5004542'
        AND o.longitude = '-90.7568747'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hawkeye Care Center'
        AND o.latitude = '42.5004542'
        AND o.longitude = '-90.7568747'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hawkeye Care Center'
        AND o.latitude = '42.5004542'
        AND o.longitude = '-90.7568747'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hawkeye Care Center'
        AND o.latitude = '42.5004542'
        AND o.longitude = '-90.7568747'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hawkeye Care Center'
        AND o.latitude = '42.5004542'
        AND o.longitude = '-90.7568747'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hawkeye Care Center'
        AND o.latitude = '42.5004542'
        AND o.longitude = '-90.7568747'));

COMMIT;
