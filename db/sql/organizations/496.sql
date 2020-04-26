
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
      'Fort Washington Medical Center',
      '11711 Livingston Rd
Fort Washington, MD 20744',
      'Fort Washington',
      'MD',
      'central supply',
      'Unsure',
      '38.7285124',
      '-76.9925925'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fort Washington Medical Center'
        AND o.latitude = '38.7285124'
        AND o.longitude = '-76.9925925'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fort Washington Medical Center'
        AND o.latitude = '38.7285124'
        AND o.longitude = '-76.9925925'));

COMMIT;
