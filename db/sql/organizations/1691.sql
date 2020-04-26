
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
      'Advisacare Home Health rebound therapies',
      '325 Dolores Dr
Pleasant Lake, MI 49272',
      'Pleasant Lake',
      'MI',
      'Curbside ATTN : Emily Walther',
      'Yes',
      '42.3835183',
      '-84.3384906'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advisacare Home Health rebound therapies'
        AND o.latitude = '42.3835183'
        AND o.longitude = '-84.3384906'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advisacare Home Health rebound therapies'
        AND o.latitude = '42.3835183'
        AND o.longitude = '-84.3384906'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advisacare Home Health rebound therapies'
        AND o.latitude = '42.3835183'
        AND o.longitude = '-84.3384906'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advisacare Home Health rebound therapies'
        AND o.latitude = '42.3835183'
        AND o.longitude = '-84.3384906'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advisacare Home Health rebound therapies'
        AND o.latitude = '42.3835183'
        AND o.longitude = '-84.3384906'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advisacare Home Health rebound therapies'
        AND o.latitude = '42.3835183'
        AND o.longitude = '-84.3384906'));

COMMIT;
