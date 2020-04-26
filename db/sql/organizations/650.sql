
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
      'Mercer County Community Options Inc',
      '2025 Princeton Pike 
Lawrence Township, NJ 08648',
      'Lawrence ',
      'NJ',
      'Front door',
      'Yes',
      '40.2507432',
      '-74.7416587'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercer County Community Options Inc'
        AND o.latitude = '40.2507432'
        AND o.longitude = '-74.7416587'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercer County Community Options Inc'
        AND o.latitude = '40.2507432'
        AND o.longitude = '-74.7416587'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercer County Community Options Inc'
        AND o.latitude = '40.2507432'
        AND o.longitude = '-74.7416587'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercer County Community Options Inc'
        AND o.latitude = '40.2507432'
        AND o.longitude = '-74.7416587'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercer County Community Options Inc'
        AND o.latitude = '40.2507432'
        AND o.longitude = '-74.7416587'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercer County Community Options Inc'
        AND o.latitude = '40.2507432'
        AND o.longitude = '-74.7416587'));

COMMIT;
