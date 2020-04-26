
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
      'Excel Urgent Care of New Hyde Park',
      '900 Hillside Avenue
New Hyde Park, NY 11040',
      'New Hyde Park',
      'NY',
      '',
      'Yes',
      '40.7431107',
      '-73.6932164'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of New Hyde Park'
        AND o.latitude = '40.7431107'
        AND o.longitude = '-73.6932164'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of New Hyde Park'
        AND o.latitude = '40.7431107'
        AND o.longitude = '-73.6932164'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of New Hyde Park'
        AND o.latitude = '40.7431107'
        AND o.longitude = '-73.6932164'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of New Hyde Park'
        AND o.latitude = '40.7431107'
        AND o.longitude = '-73.6932164'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of New Hyde Park'
        AND o.latitude = '40.7431107'
        AND o.longitude = '-73.6932164'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of New Hyde Park'
        AND o.latitude = '40.7431107'
        AND o.longitude = '-73.6932164'));

COMMIT;
