
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
      'Urgent Care for Kids',
      '23730 Westheimer Pkwy Suite N
Katy, TX 77494',
      'Katy',
      'TX',
      'Office Manager',
      'Yes',
      '29.736433',
      '-95.7769575'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '29.736433'
        AND o.longitude = '-95.7769575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '29.736433'
        AND o.longitude = '-95.7769575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '29.736433'
        AND o.longitude = '-95.7769575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '29.736433'
        AND o.longitude = '-95.7769575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '29.736433'
        AND o.longitude = '-95.7769575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '29.736433'
        AND o.longitude = '-95.7769575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '29.736433'
        AND o.longitude = '-95.7769575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '29.736433'
        AND o.longitude = '-95.7769575'));

COMMIT;
