
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
      'Renaissance Pediatrics',
      '4012 Raintree Rd Ste 200A
Chesapeake, VA 23321',
      'Chesapeake',
      'VA',
      '',
      'Yes',
      '36.8285749',
      '-76.4083262'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Renaissance Pediatrics'
        AND o.latitude = '36.8285749'
        AND o.longitude = '-76.4083262'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Renaissance Pediatrics'
        AND o.latitude = '36.8285749'
        AND o.longitude = '-76.4083262'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Renaissance Pediatrics'
        AND o.latitude = '36.8285749'
        AND o.longitude = '-76.4083262'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Renaissance Pediatrics'
        AND o.latitude = '36.8285749'
        AND o.longitude = '-76.4083262'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Renaissance Pediatrics'
        AND o.latitude = '36.8285749'
        AND o.longitude = '-76.4083262'));

COMMIT;
