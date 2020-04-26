
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
      'Children''s Hospital of Georgia Operating Room',
      '333 Pump House Rd
Evans, GA 30809',
      'Evans',
      'GA',
      '',
      'Yes',
      '33.5646619',
      '-82.0986364'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Georgia Operating Room'
        AND o.latitude = '33.5646619'
        AND o.longitude = '-82.0986364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Georgia Operating Room'
        AND o.latitude = '33.5646619'
        AND o.longitude = '-82.0986364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Georgia Operating Room'
        AND o.latitude = '33.5646619'
        AND o.longitude = '-82.0986364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Georgia Operating Room'
        AND o.latitude = '33.5646619'
        AND o.longitude = '-82.0986364'));

COMMIT;
