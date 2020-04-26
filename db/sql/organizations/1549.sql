
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
      'Throgs Neck Urgent Medical Care',
      '3594 E Tremont Ave
The Bronx, NY 10465',
      'New York - Bronx',
      'NY',
      '',
      'Yes',
      '40.8288988',
      '-73.8249514'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Throgs Neck Urgent Medical Care'
        AND o.latitude = '40.8288988'
        AND o.longitude = '-73.8249514'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Throgs Neck Urgent Medical Care'
        AND o.latitude = '40.8288988'
        AND o.longitude = '-73.8249514'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Throgs Neck Urgent Medical Care'
        AND o.latitude = '40.8288988'
        AND o.longitude = '-73.8249514'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Throgs Neck Urgent Medical Care'
        AND o.latitude = '40.8288988'
        AND o.longitude = '-73.8249514'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Throgs Neck Urgent Medical Care'
        AND o.latitude = '40.8288988'
        AND o.longitude = '-73.8249514'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Throgs Neck Urgent Medical Care'
        AND o.latitude = '40.8288988'
        AND o.longitude = '-73.8249514'));

COMMIT;
