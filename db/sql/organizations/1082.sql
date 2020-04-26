
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
      'Princeton Place',
      '500 Louisiana Blvd NE
Albuquerque, NM 87108',
      'Albuqerque',
      'NM',
      'Please call so we can meet you outside- 505-255-1717',
      'Open is fine if unused!',
      '35.0839876',
      '-106.5676412'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Princeton Place'
        AND o.latitude = '35.0839876'
        AND o.longitude = '-106.5676412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Princeton Place'
        AND o.latitude = '35.0839876'
        AND o.longitude = '-106.5676412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Princeton Place'
        AND o.latitude = '35.0839876'
        AND o.longitude = '-106.5676412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Princeton Place'
        AND o.latitude = '35.0839876'
        AND o.longitude = '-106.5676412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Princeton Place'
        AND o.latitude = '35.0839876'
        AND o.longitude = '-106.5676412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Princeton Place'
        AND o.latitude = '35.0839876'
        AND o.longitude = '-106.5676412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Princeton Place'
        AND o.latitude = '35.0839876'
        AND o.longitude = '-106.5676412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Princeton Place'
        AND o.latitude = '35.0839876'
        AND o.longitude = '-106.5676412'));

COMMIT;
