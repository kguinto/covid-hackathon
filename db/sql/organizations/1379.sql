
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
      'Royal Care Skilled Nursing Center',
      '2725 Pacific Ave
Long Beach, CA 90806',
      'Long Beach',
      'CA',
      'Front Door: Director of Nursing',
      'Yes',
      '33.8066557',
      '-118.1940414'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Royal Care Skilled Nursing Center'
        AND o.latitude = '33.8066557'
        AND o.longitude = '-118.1940414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Royal Care Skilled Nursing Center'
        AND o.latitude = '33.8066557'
        AND o.longitude = '-118.1940414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Royal Care Skilled Nursing Center'
        AND o.latitude = '33.8066557'
        AND o.longitude = '-118.1940414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Royal Care Skilled Nursing Center'
        AND o.latitude = '33.8066557'
        AND o.longitude = '-118.1940414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Royal Care Skilled Nursing Center'
        AND o.latitude = '33.8066557'
        AND o.longitude = '-118.1940414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Royal Care Skilled Nursing Center'
        AND o.latitude = '33.8066557'
        AND o.longitude = '-118.1940414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Royal Care Skilled Nursing Center'
        AND o.latitude = '33.8066557'
        AND o.longitude = '-118.1940414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Royal Care Skilled Nursing Center'
        AND o.latitude = '33.8066557'
        AND o.longitude = '-118.1940414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Royal Care Skilled Nursing Center'
        AND o.latitude = '33.8066557'
        AND o.longitude = '-118.1940414'));

COMMIT;
