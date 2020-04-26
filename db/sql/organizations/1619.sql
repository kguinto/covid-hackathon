
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
      'Bethesda Lutheran Communities',
      '1846 SE Tanager Cir
Hillsboro, OR 97123',
      'Hillsboro',
      'OR',
      'Please leave on front porch of the home. mailing address is above with ATTN to Chantel Losey ',
      'Yes',
      '45.4996605',
      '-122.9648073'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '45.4996605'
        AND o.longitude = '-122.9648073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '45.4996605'
        AND o.longitude = '-122.9648073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '45.4996605'
        AND o.longitude = '-122.9648073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '45.4996605'
        AND o.longitude = '-122.9648073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '45.4996605'
        AND o.longitude = '-122.9648073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '45.4996605'
        AND o.longitude = '-122.9648073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '45.4996605'
        AND o.longitude = '-122.9648073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '45.4996605'
        AND o.longitude = '-122.9648073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '45.4996605'
        AND o.longitude = '-122.9648073'));

COMMIT;
