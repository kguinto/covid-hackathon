
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
      'Huntington Beach Emergency Services ',
      '2000 Main St
Huntington Beach, CA 92648',
      'Huntington Beach',
      'CA',
      '',
      'Yes',
      '33.6780642',
      '-118.0002925'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Beach Emergency Services '
        AND o.latitude = '33.6780642'
        AND o.longitude = '-118.0002925'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Beach Emergency Services '
        AND o.latitude = '33.6780642'
        AND o.longitude = '-118.0002925'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Beach Emergency Services '
        AND o.latitude = '33.6780642'
        AND o.longitude = '-118.0002925'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Beach Emergency Services '
        AND o.latitude = '33.6780642'
        AND o.longitude = '-118.0002925'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Beach Emergency Services '
        AND o.latitude = '33.6780642'
        AND o.longitude = '-118.0002925'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Beach Emergency Services '
        AND o.latitude = '33.6780642'
        AND o.longitude = '-118.0002925'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntington Beach Emergency Services '
        AND o.latitude = '33.6780642'
        AND o.longitude = '-118.0002925'));

COMMIT;
