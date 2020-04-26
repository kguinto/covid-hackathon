
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
      'WMed Health ',
      '1000 Oakland Drive
Kalamazoo, MI 49008',
      'Kalamazoo ',
      'MI',
      'Mail to Dr. Patel',
      'Yes',
      '42.2831228',
      '-85.599705'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'WMed Health '
        AND o.latitude = '42.2831228'
        AND o.longitude = '-85.599705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'WMed Health '
        AND o.latitude = '42.2831228'
        AND o.longitude = '-85.599705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'WMed Health '
        AND o.latitude = '42.2831228'
        AND o.longitude = '-85.599705'));

COMMIT;
