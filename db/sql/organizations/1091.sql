
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
      'The Moorings of Arlington Heights',
      '811 E Central Rd
Arlington Heights, IL 60005',
      'Arlington heights',
      'IL',
      'Attn:  Healthcare Administrator',
      'No',
      '42.0647456',
      '-87.9729106'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Moorings of Arlington Heights'
        AND o.latitude = '42.0647456'
        AND o.longitude = '-87.9729106'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Moorings of Arlington Heights'
        AND o.latitude = '42.0647456'
        AND o.longitude = '-87.9729106'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Moorings of Arlington Heights'
        AND o.latitude = '42.0647456'
        AND o.longitude = '-87.9729106'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Moorings of Arlington Heights'
        AND o.latitude = '42.0647456'
        AND o.longitude = '-87.9729106'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Moorings of Arlington Heights'
        AND o.latitude = '42.0647456'
        AND o.longitude = '-87.9729106'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Moorings of Arlington Heights'
        AND o.latitude = '42.0647456'
        AND o.longitude = '-87.9729106'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Moorings of Arlington Heights'
        AND o.latitude = '42.0647456'
        AND o.longitude = '-87.9729106'));

COMMIT;
