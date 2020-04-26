
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
      'Southeast Nebraska Cancer Center',
      '3901 Pine Lake Rd #111
Lincoln, NE 68516',
      'Lincoln',
      'NE',
      'Xin Wang/Caley Carlson',
      'Yes',
      '40.7395686',
      '-96.6642714'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southeast Nebraska Cancer Center'
        AND o.latitude = '40.7395686'
        AND o.longitude = '-96.6642714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southeast Nebraska Cancer Center'
        AND o.latitude = '40.7395686'
        AND o.longitude = '-96.6642714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southeast Nebraska Cancer Center'
        AND o.latitude = '40.7395686'
        AND o.longitude = '-96.6642714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southeast Nebraska Cancer Center'
        AND o.latitude = '40.7395686'
        AND o.longitude = '-96.6642714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southeast Nebraska Cancer Center'
        AND o.latitude = '40.7395686'
        AND o.longitude = '-96.6642714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southeast Nebraska Cancer Center'
        AND o.latitude = '40.7395686'
        AND o.longitude = '-96.6642714'));

COMMIT;
