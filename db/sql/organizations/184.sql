
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
      'Stanford Health Care - ValleyCare Valley Memmorial Center',
      '1119 E Stanley Blvd
Livermore, CA 94550 ',
      'Livermore',
      'CA',
      'Dropoff at LifeStyleRx, Mon-F 8AM-5PM. Details at https://bit.ly/StanfordPPENeeds. Donations must be unopened, original packaging, in accordance with hospital standards. Not accepting homemade supplies at this time.',
      'No',
      '37.6783049',
      '-121.7817827'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care - ValleyCare Valley Memmorial Center'
        AND o.latitude = '37.6783049'
        AND o.longitude = '-121.7817827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care - ValleyCare Valley Memmorial Center'
        AND o.latitude = '37.6783049'
        AND o.longitude = '-121.7817827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care - ValleyCare Valley Memmorial Center'
        AND o.latitude = '37.6783049'
        AND o.longitude = '-121.7817827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care - ValleyCare Valley Memmorial Center'
        AND o.latitude = '37.6783049'
        AND o.longitude = '-121.7817827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care - ValleyCare Valley Memmorial Center'
        AND o.latitude = '37.6783049'
        AND o.longitude = '-121.7817827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care - ValleyCare Valley Memmorial Center'
        AND o.latitude = '37.6783049'
        AND o.longitude = '-121.7817827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care - ValleyCare Valley Memmorial Center'
        AND o.latitude = '37.6783049'
        AND o.longitude = '-121.7817827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('CAPR/PAPR machines and disposables',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care - ValleyCare Valley Memmorial Center'
        AND o.latitude = '37.6783049'
        AND o.longitude = '-121.7817827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('flocked swabs',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care - ValleyCare Valley Memmorial Center'
        AND o.latitude = '37.6783049'
        AND o.longitude = '-121.7817827'));

COMMIT;
