
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
      'Saint Alphonsus Regional Medical Center',
      '1055 N Curtis Rd
Boise, ID 83706',
      'Boise',
      'ID',
      'Receiving Dock ATTN: Donations',
      'No',
      '43.6132915',
      '-116.2558421'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Regional Medical Center'
        AND o.latitude = '43.6132915'
        AND o.longitude = '-116.2558421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Regional Medical Center'
        AND o.latitude = '43.6132915'
        AND o.longitude = '-116.2558421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Regional Medical Center'
        AND o.latitude = '43.6132915'
        AND o.longitude = '-116.2558421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Regional Medical Center'
        AND o.latitude = '43.6132915'
        AND o.longitude = '-116.2558421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Regional Medical Center'
        AND o.latitude = '43.6132915'
        AND o.longitude = '-116.2558421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Regional Medical Center'
        AND o.latitude = '43.6132915'
        AND o.longitude = '-116.2558421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Regional Medical Center'
        AND o.latitude = '43.6132915'
        AND o.longitude = '-116.2558421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Regional Medical Center'
        AND o.latitude = '43.6132915'
        AND o.longitude = '-116.2558421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Regional Medical Center'
        AND o.latitude = '43.6132915'
        AND o.longitude = '-116.2558421'));

COMMIT;
