
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
      'Community Options Inc',
      '2720 San Pedro N.E.
Albuquerque, NM 87110',
      'Albuquerque ',
      'NM',
      'ATTN: Kassy Kitchens',
      'Yes',
      '35.112071',
      '-106.5772714'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '35.112071'
        AND o.longitude = '-106.5772714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '35.112071'
        AND o.longitude = '-106.5772714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '35.112071'
        AND o.longitude = '-106.5772714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '35.112071'
        AND o.longitude = '-106.5772714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '35.112071'
        AND o.longitude = '-106.5772714'));

COMMIT;
