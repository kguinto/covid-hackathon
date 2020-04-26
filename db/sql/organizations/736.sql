
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
      'Kaiser Permanente - Glendale Orange Street Medical Offices',
      '501 N Orange St.
Glendale, CA 91203',
      'Glendale',
      'CA',
      'Email rodriguezgutierrezmd@gmail.com to arrange curbside dropoff | Attn: Becky Lim, MD. If you are able to call or text: 310-386-7774 before you drop off that would be ideal. Attn: Becky Lim, ppe donation to address above ',
      'Yes',
      '34.1531976',
      '-118.2569564'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Glendale Orange Street Medical Offices'
        AND o.latitude = '34.1531976'
        AND o.longitude = '-118.2569564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Glendale Orange Street Medical Offices'
        AND o.latitude = '34.1531976'
        AND o.longitude = '-118.2569564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Glendale Orange Street Medical Offices'
        AND o.latitude = '34.1531976'
        AND o.longitude = '-118.2569564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Glendale Orange Street Medical Offices'
        AND o.latitude = '34.1531976'
        AND o.longitude = '-118.2569564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Glendale Orange Street Medical Offices'
        AND o.latitude = '34.1531976'
        AND o.longitude = '-118.2569564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Glendale Orange Street Medical Offices'
        AND o.latitude = '34.1531976'
        AND o.longitude = '-118.2569564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Glendale Orange Street Medical Offices'
        AND o.latitude = '34.1531976'
        AND o.longitude = '-118.2569564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Glendale Orange Street Medical Offices'
        AND o.latitude = '34.1531976'
        AND o.longitude = '-118.2569564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Glendale Orange Street Medical Offices'
        AND o.latitude = '34.1531976'
        AND o.longitude = '-118.2569564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Glendale Orange Street Medical Offices'
        AND o.latitude = '34.1531976'
        AND o.longitude = '-118.2569564'));

COMMIT;
