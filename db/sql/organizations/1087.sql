
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
      'Rio at Las Estancias',
      '3620 Las Estancias Dr
Albuquerque, NM 87121',
      'Albuquerque',
      'NM',
      'Please call so we can meet you in the parking lot- 505-253-9600',
      'Opened is fine if unused!',
      '35.0172953',
      '-106.712877'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio at Las Estancias'
        AND o.latitude = '35.0172953'
        AND o.longitude = '-106.712877'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio at Las Estancias'
        AND o.latitude = '35.0172953'
        AND o.longitude = '-106.712877'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio at Las Estancias'
        AND o.latitude = '35.0172953'
        AND o.longitude = '-106.712877'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio at Las Estancias'
        AND o.latitude = '35.0172953'
        AND o.longitude = '-106.712877'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio at Las Estancias'
        AND o.latitude = '35.0172953'
        AND o.longitude = '-106.712877'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio at Las Estancias'
        AND o.latitude = '35.0172953'
        AND o.longitude = '-106.712877'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio at Las Estancias'
        AND o.latitude = '35.0172953'
        AND o.longitude = '-106.712877'));

COMMIT;
