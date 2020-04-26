
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
      'Kaiser Permanente - San Francisco',
      '2130 O''Farrell St
San Francisco, CA 94115',
      'San Francisco',
      'CA',
      'Please mail or drop off donations at the address stated above. For mail, please indicate ATTN: Hospital Command Center. For drop offs, please drop off at the loading dock Mon to Fri 6 am to 2:30 pm. If you are dropping off, please contact (415) 833-2593 and a staff member will come to accept the donation.',
      '',
      '37.7825037',
      '-122.4399561'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Francisco'
        AND o.latitude = '37.7825037'
        AND o.longitude = '-122.4399561'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Francisco'
        AND o.latitude = '37.7825037'
        AND o.longitude = '-122.4399561'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Francisco'
        AND o.latitude = '37.7825037'
        AND o.longitude = '-122.4399561'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Francisco'
        AND o.latitude = '37.7825037'
        AND o.longitude = '-122.4399561'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Francisco'
        AND o.latitude = '37.7825037'
        AND o.longitude = '-122.4399561'));

COMMIT;
