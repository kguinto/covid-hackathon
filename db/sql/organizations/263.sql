
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
      'USF Health South Tampa Center',
      '2 Tampa General Cir
Tampa, FL 33606',
      'Tampa',
      'FL',
      'Drop off with personnel in the first floor lobby',
      'Yes',
      '27.9371414',
      '-82.4591743'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'USF Health South Tampa Center'
        AND o.latitude = '27.9371414'
        AND o.longitude = '-82.4591743'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'USF Health South Tampa Center'
        AND o.latitude = '27.9371414'
        AND o.longitude = '-82.4591743'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'USF Health South Tampa Center'
        AND o.latitude = '27.9371414'
        AND o.longitude = '-82.4591743'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'USF Health South Tampa Center'
        AND o.latitude = '27.9371414'
        AND o.longitude = '-82.4591743'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'USF Health South Tampa Center'
        AND o.latitude = '27.9371414'
        AND o.longitude = '-82.4591743'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'USF Health South Tampa Center'
        AND o.latitude = '27.9371414'
        AND o.longitude = '-82.4591743'));

COMMIT;
