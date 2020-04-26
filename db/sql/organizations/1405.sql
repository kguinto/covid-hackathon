
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
      'St. Vincent''s Hospital ',
      '810 St Vincents Dr
Birmingham, AL 35205',
      'Birmingham',
      'AL',
      'QUARANTINE ICU, 3rd floor, main hospital',
      'Yes',
      '33.5083434',
      '-86.7886005'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Vincent''s Hospital '
        AND o.latitude = '33.5083434'
        AND o.longitude = '-86.7886005'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Vincent''s Hospital '
        AND o.latitude = '33.5083434'
        AND o.longitude = '-86.7886005'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Vincent''s Hospital '
        AND o.latitude = '33.5083434'
        AND o.longitude = '-86.7886005'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Vincent''s Hospital '
        AND o.latitude = '33.5083434'
        AND o.longitude = '-86.7886005'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Vincent''s Hospital '
        AND o.latitude = '33.5083434'
        AND o.longitude = '-86.7886005'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Vincent''s Hospital '
        AND o.latitude = '33.5083434'
        AND o.longitude = '-86.7886005'));

COMMIT;
