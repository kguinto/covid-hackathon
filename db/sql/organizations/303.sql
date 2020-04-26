
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
      'i-Care Urgent Care',
      '27722 Clinton Keith Rd
Murrieta, CA 92562',
      'Murrieta',
      'CA',
      'mail, drop off, local pick up',
      'Unsure',
      '33.6000782',
      '-117.1765303'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'i-Care Urgent Care'
        AND o.latitude = '33.6000782'
        AND o.longitude = '-117.1765303'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('isolation gown',
    (SELECT id FROM organizations o
      WHERE o.name = 'i-Care Urgent Care'
        AND o.latitude = '33.6000782'
        AND o.longitude = '-117.1765303'));

COMMIT;
