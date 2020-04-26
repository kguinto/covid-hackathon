
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
      'Pueblo Community Health Center',
      '300 Colorado Ave
Pueblo, CO 81001',
      'Pueblo',
      'CO',
      'Can bring to 1st floor, ask for Dr. Claire Reed, Julie Martinez or Vanessa Becerril',
      'Yes',
      '38.2572006',
      '-104.6236682'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pueblo Community Health Center'
        AND o.latitude = '38.2572006'
        AND o.longitude = '-104.6236682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pueblo Community Health Center'
        AND o.latitude = '38.2572006'
        AND o.longitude = '-104.6236682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pueblo Community Health Center'
        AND o.latitude = '38.2572006'
        AND o.longitude = '-104.6236682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pueblo Community Health Center'
        AND o.latitude = '38.2572006'
        AND o.longitude = '-104.6236682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pueblo Community Health Center'
        AND o.latitude = '38.2572006'
        AND o.longitude = '-104.6236682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pueblo Community Health Center'
        AND o.latitude = '38.2572006'
        AND o.longitude = '-104.6236682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pueblo Community Health Center'
        AND o.latitude = '38.2572006'
        AND o.longitude = '-104.6236682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pueblo Community Health Center'
        AND o.latitude = '38.2572006'
        AND o.longitude = '-104.6236682'));

COMMIT;
