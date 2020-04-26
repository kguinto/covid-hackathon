
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
      'Mercy Hospital Emergency Department',
      '3663 S Miami Ave
Miami, FL 33133',
      'Miami ',
      'FL',
      'Care of Dr. David Sack, Director of Emergency Medicine',
      'Yes',
      '25.7400049',
      '-80.213526'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Hospital Emergency Department'
        AND o.latitude = '25.7400049'
        AND o.longitude = '-80.213526'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Hospital Emergency Department'
        AND o.latitude = '25.7400049'
        AND o.longitude = '-80.213526'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Hospital Emergency Department'
        AND o.latitude = '25.7400049'
        AND o.longitude = '-80.213526'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Hospital Emergency Department'
        AND o.latitude = '25.7400049'
        AND o.longitude = '-80.213526'));

COMMIT;
