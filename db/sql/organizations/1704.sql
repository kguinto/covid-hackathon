
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
      'St. Croix Hospice',
      '7755 3rd St N #200
Oakdale, MN 55128',
      'OAKDALE',
      'MN',
      'Come in and ring the bell.  ',
      'Yes',
      '44.9501156',
      '-92.9470804'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Croix Hospice'
        AND o.latitude = '44.9501156'
        AND o.longitude = '-92.9470804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Croix Hospice'
        AND o.latitude = '44.9501156'
        AND o.longitude = '-92.9470804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Croix Hospice'
        AND o.latitude = '44.9501156'
        AND o.longitude = '-92.9470804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Croix Hospice'
        AND o.latitude = '44.9501156'
        AND o.longitude = '-92.9470804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Croix Hospice'
        AND o.latitude = '44.9501156'
        AND o.longitude = '-92.9470804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Croix Hospice'
        AND o.latitude = '44.9501156'
        AND o.longitude = '-92.9470804'));

COMMIT;
