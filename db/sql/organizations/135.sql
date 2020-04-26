
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
      'Rush University Medical Center',
      '711 S Paulina St
Chicago, IL 60612',
      'Chicago',
      'IL',
      'Donations can be dropped off at the receiving dock at the above address. Thank you so much.',
      'Yes',
      '41.87241',
      '-87.668694'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush University Medical Center'
        AND o.latitude = '41.87241'
        AND o.longitude = '-87.668694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush University Medical Center'
        AND o.latitude = '41.87241'
        AND o.longitude = '-87.668694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush University Medical Center'
        AND o.latitude = '41.87241'
        AND o.longitude = '-87.668694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush University Medical Center'
        AND o.latitude = '41.87241'
        AND o.longitude = '-87.668694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush University Medical Center'
        AND o.latitude = '41.87241'
        AND o.longitude = '-87.668694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush University Medical Center'
        AND o.latitude = '41.87241'
        AND o.longitude = '-87.668694'));

COMMIT;
