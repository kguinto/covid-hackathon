
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
      'West Virginia University Hospital ',
      '1 Medical Center Dr
Morgantown, WV 26505',
      'Morgantown ',
      'WV',
      'Attention Dept of Anesthesia:Kelly Meyers CRNA, Clinical Coordinator Anesthesiology WVU Hospital 
1 Med Center Drive  
Morgantown WV 26505',
      'Yes',
      '39.6539117',
      '-79.9577486'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Virginia University Hospital '
        AND o.latitude = '39.6539117'
        AND o.longitude = '-79.9577486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Virginia University Hospital '
        AND o.latitude = '39.6539117'
        AND o.longitude = '-79.9577486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Virginia University Hospital '
        AND o.latitude = '39.6539117'
        AND o.longitude = '-79.9577486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Virginia University Hospital '
        AND o.latitude = '39.6539117'
        AND o.longitude = '-79.9577486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Virginia University Hospital '
        AND o.latitude = '39.6539117'
        AND o.longitude = '-79.9577486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Virginia University Hospital '
        AND o.latitude = '39.6539117'
        AND o.longitude = '-79.9577486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Virginia University Hospital '
        AND o.latitude = '39.6539117'
        AND o.longitude = '-79.9577486'));

COMMIT;
