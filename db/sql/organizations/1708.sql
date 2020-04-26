
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
      'Share Our Selves',
      '1550 Superior Ave
Costa Mesa, CA 92627',
      'Costa Mesa',
      'CA',
      'Drop off at food pantry warehouse',
      'Yes',
      '33.6326494',
      '-117.9260444'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Share Our Selves'
        AND o.latitude = '33.6326494'
        AND o.longitude = '-117.9260444'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Share Our Selves'
        AND o.latitude = '33.6326494'
        AND o.longitude = '-117.9260444'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Share Our Selves'
        AND o.latitude = '33.6326494'
        AND o.longitude = '-117.9260444'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Share Our Selves'
        AND o.latitude = '33.6326494'
        AND o.longitude = '-117.9260444'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Share Our Selves'
        AND o.latitude = '33.6326494'
        AND o.longitude = '-117.9260444'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Share Our Selves'
        AND o.latitude = '33.6326494'
        AND o.longitude = '-117.9260444'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Share Our Selves'
        AND o.latitude = '33.6326494'
        AND o.longitude = '-117.9260444'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Share Our Selves'
        AND o.latitude = '33.6326494'
        AND o.longitude = '-117.9260444'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Share Our Selves'
        AND o.latitude = '33.6326494'
        AND o.longitude = '-117.9260444'));

COMMIT;
