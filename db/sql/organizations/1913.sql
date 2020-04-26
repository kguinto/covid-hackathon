
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
      'St. Joseph''s Medical Center (NJ)',
      '703 Main St
Paterson, NJ 07503',
      'Paterson',
      'NJ',
      'Please mail it my personal and I will bring them in. 120 Chubb Ave, Apt 413, Lyndhurst, NJ 07071',
      'Yes',
      '40.9022582',
      '-74.1661378'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Medical Center (NJ)'
        AND o.latitude = '40.9022582'
        AND o.longitude = '-74.1661378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Medical Center (NJ)'
        AND o.latitude = '40.9022582'
        AND o.longitude = '-74.1661378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Medical Center (NJ)'
        AND o.latitude = '40.9022582'
        AND o.longitude = '-74.1661378'));

COMMIT;
