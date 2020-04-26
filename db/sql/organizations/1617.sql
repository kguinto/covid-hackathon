
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
      '1640 Lake Woodlands Dr Ste E
The Woodlands, TX 77380',
      'The Woodlands',
      'TX',
      'Office Manager',
      'Yes',
      '30.1674402',
      '-95.4595157'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '30.1674402'
        AND o.longitude = '-95.4595157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '30.1674402'
        AND o.longitude = '-95.4595157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '30.1674402'
        AND o.longitude = '-95.4595157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '30.1674402'
        AND o.longitude = '-95.4595157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '30.1674402'
        AND o.longitude = '-95.4595157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '30.1674402'
        AND o.longitude = '-95.4595157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '30.1674402'
        AND o.longitude = '-95.4595157'));

COMMIT;
