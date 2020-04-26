
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
      'Excel Urgent Care of Wantagh',
      '3430 Sunrise Hwy
Wantagh, NY 11793',
      'Wantagh',
      'NY',
      '',
      'Yes',
      '40.6724786',
      '-73.5047435'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Wantagh'
        AND o.latitude = '40.6724786'
        AND o.longitude = '-73.5047435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Wantagh'
        AND o.latitude = '40.6724786'
        AND o.longitude = '-73.5047435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Wantagh'
        AND o.latitude = '40.6724786'
        AND o.longitude = '-73.5047435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Wantagh'
        AND o.latitude = '40.6724786'
        AND o.longitude = '-73.5047435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Wantagh'
        AND o.latitude = '40.6724786'
        AND o.longitude = '-73.5047435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Wantagh'
        AND o.latitude = '40.6724786'
        AND o.longitude = '-73.5047435'));

COMMIT;
