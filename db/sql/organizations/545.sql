
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
      'Eastern Shore Urgent Care',
      '29710 Urgent Care Dr
Daphne, AL 36526',
      'Daphne',
      'AL',
      'Drop off, mail, UPS, etc',
      'Unsure',
      '30.6577148',
      '-87.8513896'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eastern Shore Urgent Care'
        AND o.latitude = '30.6577148'
        AND o.longitude = '-87.8513896'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eastern Shore Urgent Care'
        AND o.latitude = '30.6577148'
        AND o.longitude = '-87.8513896'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eastern Shore Urgent Care'
        AND o.latitude = '30.6577148'
        AND o.longitude = '-87.8513896'));

COMMIT;
