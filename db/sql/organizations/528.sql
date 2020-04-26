
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
      'Baylor Scott & White Medical Center - McKinney',
      '5252 W University Dr 
Highway 380 at Lake Forest Dr
McKinney, TX 75071',
      'McKinney',
      'TX',
      'Yes',
      'Unsure',
      '33.221056',
      '-96.682481'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott & White Medical Center - McKinney'
        AND o.latitude = '33.221056'
        AND o.longitude = '-96.682481'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPR',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott & White Medical Center - McKinney'
        AND o.latitude = '33.221056'
        AND o.longitude = '-96.682481'));

COMMIT;
