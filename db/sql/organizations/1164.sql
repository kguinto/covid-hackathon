
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
      'University of Maryland Medical Center (Baltimore Campus)',
      '620 W Lexington St
Baltimore, MD 21201',
      'Baltimore',
      'MD',
      'You can drop off PPE between the hours of 8 AM-12:30 PM, Monday - Friday.  The building door will be locked, but there is a receptionist. You will need to ring the bell to get access. To maximize social distancing, please leave donations in the lobby, on entry.',
      'Yes',
      '39.2916414',
      '-76.6246107'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Maryland Medical Center (Baltimore Campus)'
        AND o.latitude = '39.2916414'
        AND o.longitude = '-76.6246107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Maryland Medical Center (Baltimore Campus)'
        AND o.latitude = '39.2916414'
        AND o.longitude = '-76.6246107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Maryland Medical Center (Baltimore Campus)'
        AND o.latitude = '39.2916414'
        AND o.longitude = '-76.6246107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Maryland Medical Center (Baltimore Campus)'
        AND o.latitude = '39.2916414'
        AND o.longitude = '-76.6246107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Maryland Medical Center (Baltimore Campus)'
        AND o.latitude = '39.2916414'
        AND o.longitude = '-76.6246107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Maryland Medical Center (Baltimore Campus)'
        AND o.latitude = '39.2916414'
        AND o.longitude = '-76.6246107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Maryland Medical Center (Baltimore Campus)'
        AND o.latitude = '39.2916414'
        AND o.longitude = '-76.6246107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Maryland Medical Center (Baltimore Campus)'
        AND o.latitude = '39.2916414'
        AND o.longitude = '-76.6246107'));

COMMIT;
