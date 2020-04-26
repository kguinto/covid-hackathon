
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
      'Samaritan Healthcare & Hospice',
      '5 Eves Drive, Suite 300
Marlton, NJ 08053',
      'Marlton',
      'NJ',
      'ATTN:  Joe Boccolini',
      'Open boxes, yes; but not individual pieces.  Must be sterile.',
      '39.910875',
      '-74.9326208'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Samaritan Healthcare & Hospice'
        AND o.latitude = '39.910875'
        AND o.longitude = '-74.9326208'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Samaritan Healthcare & Hospice'
        AND o.latitude = '39.910875'
        AND o.longitude = '-74.9326208'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Samaritan Healthcare & Hospice'
        AND o.latitude = '39.910875'
        AND o.longitude = '-74.9326208'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Samaritan Healthcare & Hospice'
        AND o.latitude = '39.910875'
        AND o.longitude = '-74.9326208'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Samaritan Healthcare & Hospice'
        AND o.latitude = '39.910875'
        AND o.longitude = '-74.9326208'));

COMMIT;
