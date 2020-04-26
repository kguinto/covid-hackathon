
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
      'Anne Arundel Medical Center',
      ' 2000 Medical Parkway
Annapolis, MD 21401.',
      'Annapolis',
      'MD',
      'These items should be delivered curbside to AAMC''s Belcher Pavilion Circle, located at 2000 Medical Parkway, Annapolis, MD, 21401. Hours for donation drop off are Wednesday and Friday from 10 am to noon.  A member of the AAMC team will gratefully accept your donation. 
If you have questions or would like to get a tax receipt, please email Foundation@aahs.org',
      'Yes',
      '38.9893129',
      '-76.5374431'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anne Arundel Medical Center'
        AND o.latitude = '38.9893129'
        AND o.longitude = '-76.5374431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anne Arundel Medical Center'
        AND o.latitude = '38.9893129'
        AND o.longitude = '-76.5374431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anne Arundel Medical Center'
        AND o.latitude = '38.9893129'
        AND o.longitude = '-76.5374431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anne Arundel Medical Center'
        AND o.latitude = '38.9893129'
        AND o.longitude = '-76.5374431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anne Arundel Medical Center'
        AND o.latitude = '38.9893129'
        AND o.longitude = '-76.5374431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anne Arundel Medical Center'
        AND o.latitude = '38.9893129'
        AND o.longitude = '-76.5374431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anne Arundel Medical Center'
        AND o.latitude = '38.9893129'
        AND o.longitude = '-76.5374431'));

COMMIT;
