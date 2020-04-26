
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
      'Capital Caring Adler Hospice Inpatient Center',
      '24419 Millstream Dr
Aldie, VA 20105',
      'Aldie',
      'VA',
      'Bring to front desk in lobby',
      'Yes',
      '38.9379292',
      '-77.552717'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Caring Adler Hospice Inpatient Center'
        AND o.latitude = '38.9379292'
        AND o.longitude = '-77.552717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Caring Adler Hospice Inpatient Center'
        AND o.latitude = '38.9379292'
        AND o.longitude = '-77.552717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Caring Adler Hospice Inpatient Center'
        AND o.latitude = '38.9379292'
        AND o.longitude = '-77.552717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Caring Adler Hospice Inpatient Center'
        AND o.latitude = '38.9379292'
        AND o.longitude = '-77.552717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Caring Adler Hospice Inpatient Center'
        AND o.latitude = '38.9379292'
        AND o.longitude = '-77.552717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Caring Adler Hospice Inpatient Center'
        AND o.latitude = '38.9379292'
        AND o.longitude = '-77.552717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Caring Adler Hospice Inpatient Center'
        AND o.latitude = '38.9379292'
        AND o.longitude = '-77.552717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Caring Adler Hospice Inpatient Center'
        AND o.latitude = '38.9379292'
        AND o.longitude = '-77.552717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Caring Adler Hospice Inpatient Center'
        AND o.latitude = '38.9379292'
        AND o.longitude = '-77.552717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Caring Adler Hospice Inpatient Center'
        AND o.latitude = '38.9379292'
        AND o.longitude = '-77.552717'));

COMMIT;
