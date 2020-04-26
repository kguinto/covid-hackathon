
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
      'Memorial Hospital Pembroke',
      '7800 Sheridan St
Pembroke Pines, FL 33024',
      'Pembroke Pines',
      'FL',
      'Mail/In-person',
      'Unsure',
      '26.0296956',
      '-80.2455491'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital Pembroke'
        AND o.latitude = '26.0296956'
        AND o.longitude = '-80.2455491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital Pembroke'
        AND o.latitude = '26.0296956'
        AND o.longitude = '-80.2455491'));

COMMIT;
